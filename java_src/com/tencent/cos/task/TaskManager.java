package com.tencent.cos.task;

import android.content.Context;
import com.tencent.cos.COSConfig;
import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.GetObjectRequest;
import com.tencent.cos.model.PutObjectRequest;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.task.storage.StorageHelper;
import com.tencent.cos.utils.QLog;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes2.dex */
public class TaskManager {
    private static final String TAG = "com.tencent.cos.task.TaskManager";
    protected ExecutorService cmdExecutor;
    protected List<Task> cmdTaskList;
    protected COSConfig config;
    protected Context context;
    protected ExecutorService downloadExecutor;
    protected List<Task> downloadTaskList;
    protected int maxPoolSize;
    protected OkHttpClient okHttpClient;
    protected StorageHelper storageHelper;
    protected ExecutorService uploadExecutor;
    protected List<Task> uploadTaskList;

    /* JADX INFO: renamed from: com.tencent.cos.task.TaskManager$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$cos$task$TaskType;

        static {
            int[] iArr = new int[TaskType.values().length];
            $SwitchMap$com$tencent$cos$task$TaskType = iArr;
            try {
                iArr[TaskType.CMD_TASK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tencent$cos$task$TaskType[TaskType.DOWNLOAD_TASK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tencent$cos$task$TaskType[TaskType.UPLOAD_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected class TaskStateChanageOperator implements ITaskStateListener {
        private List<Task> listTask;
        private Task task;

        public TaskStateChanageOperator(List<Task> list, Task task) {
            this.listTask = list;
            this.task = task;
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onCancel() {
            Task task = this.task;
            TaskState taskState = TaskState.CANCEL;
            task.setTaskState(taskState);
            QLog.w(TaskManager.TAG, "task is " + taskState.getDesc());
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onError(int i10, String str) {
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onFail() {
            Task task = this.task;
            TaskState taskState = TaskState.FAILED;
            task.setTaskState(taskState);
            this.listTask.remove(this.task);
            QLog.w(TaskManager.TAG, "task is " + taskState.getDesc());
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onPause() {
            Task task = this.task;
            TaskState taskState = TaskState.PAUSE;
            task.setTaskState(taskState);
            QLog.w(TaskManager.TAG, "task is " + taskState.getDesc());
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onResponse(COSResult cOSResult) {
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onRetry() {
            Task task = this.task;
            TaskState taskState = TaskState.RETRY;
            task.setTaskState(taskState);
            QLog.w(TaskManager.TAG, "task is " + taskState.getDesc());
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onSendBegin() {
            Task task = this.task;
            TaskState taskState = TaskState.SENDING;
            task.setTaskState(taskState);
            QLog.w(TaskManager.TAG, "task is " + taskState.getDesc());
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onSendFinish() {
            Task task = this.task;
            TaskState taskState = TaskState.FINISH;
            task.setTaskState(taskState);
            this.listTask.remove(this.task);
            QLog.w(TaskManager.TAG, "task is " + taskState.getDesc());
        }

        @Override // com.tencent.cos.task.listener.ITaskStateListener
        public void onTimeout() {
        }
    }

    public TaskManager(Context context, final COSConfig cOSConfig, String str) {
        this.maxPoolSize = 3;
        int threadPoolSize = cOSConfig.getThreadPoolSize();
        this.maxPoolSize = threadPoolSize;
        this.cmdExecutor = Executors.newFixedThreadPool(threadPoolSize);
        this.uploadExecutor = Executors.newFixedThreadPool(this.maxPoolSize);
        this.downloadExecutor = Executors.newFixedThreadPool(this.maxPoolSize);
        this.cmdTaskList = new LinkedList();
        this.uploadTaskList = new LinkedList();
        this.downloadTaskList = new LinkedList();
        this.config = cOSConfig;
        this.context = context;
        OkHttpClient.Builder builderHostnameVerifier = new OkHttpClient.Builder().followRedirects(false).followSslRedirects(false).retryOnConnectionFailure(false).cache(null).hostnameVerifier(new HostnameVerifier() { // from class: com.tencent.cos.task.TaskManager.1
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str2, SSLSession sSLSession) {
                return HttpsURLConnection.getDefaultHostnameVerifier().verify(cOSConfig.getCosDomain(), sSLSession);
            }
        });
        Dispatcher dispatcher = new Dispatcher();
        dispatcher.setMaxRequests(cOSConfig.getMaxConnectionsCount());
        long connectionTimeout = cOSConfig.getConnectionTimeout();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builderHostnameVerifier.connectTimeout(connectionTimeout, timeUnit).readTimeout(cOSConfig.getSocketTimeout(), timeUnit).writeTimeout(cOSConfig.getSocketTimeout(), timeUnit).dispatcher(dispatcher);
        this.okHttpClient = builderHostnameVerifier.build();
        this.storageHelper = new StorageHelper(context, str);
    }

    public boolean cancelTask(int i10) {
        TaskState taskState;
        Task task = getTask(this.uploadTaskList, i10);
        TaskType taskType = TaskType.UPLOAD_TASK;
        if (task == null) {
            task = getTask(this.downloadTaskList, i10);
            taskType = TaskType.DOWNLOAD_TASK;
        }
        if (task == null) {
            task = getTask(this.cmdTaskList, i10);
            taskType = TaskType.CMD_TASK;
        }
        if (task == null) {
            QLog.w(TAG, "取消任务失败：不存在该任务");
            return false;
        }
        TaskState taskState2 = task.getTaskState();
        if (taskState2 == TaskState.SUCCEED || taskState2 == TaskState.FAILED || taskState2 == (taskState = TaskState.CANCEL)) {
            QLog.w(TAG, "任务取消失败：任务状态不允许取消");
            return false;
        }
        task.cancel();
        Future future = task.getFuture();
        boolean zCancel = future != null ? future.cancel(true) : true;
        if (zCancel) {
            QLog.w(TAG, "取消任务成功！");
            task.setTaskState(taskState);
            int i11 = AnonymousClass2.$SwitchMap$com$tencent$cos$task$TaskType[taskType.ordinal()];
            if (i11 == 1) {
                this.cmdTaskList.remove(task);
            } else if (i11 == 2) {
                this.downloadTaskList.remove(task);
            } else if (i11 == 3) {
                this.uploadTaskList.remove(task);
            }
        } else {
            QLog.w(TAG, "取消任务失败！");
        }
        return zCancel;
    }

    public List<Task> getListTask() {
        LinkedList linkedList = new LinkedList();
        List<Task> list = this.cmdTaskList;
        if (list != null) {
            linkedList.addAll(list);
        }
        List<Task> list2 = this.downloadTaskList;
        if (list2 != null) {
            linkedList.addAll(list2);
        }
        List<Task> list3 = this.uploadTaskList;
        if (list3 != null) {
            linkedList.addAll(list3);
        }
        return linkedList;
    }

    public Task getTask(List<Task> list, int i10) {
        for (Task task : list) {
            if (task.getHttpRequest().getRequest().getRequestId() == i10) {
                return task;
            }
        }
        return null;
    }

    public boolean pauseTask(int i10) {
        TaskState taskState;
        Task task = getTask(this.uploadTaskList, i10);
        if (task == null) {
            task = getTask(this.downloadTaskList, i10);
        }
        if (task == null) {
            task = getTask(this.cmdTaskList, i10);
        }
        if (task == null) {
            QLog.w(TAG, "暂停任务失败：不存在该任务");
            return false;
        }
        TaskState taskState2 = task.getTaskState();
        if (taskState2 == TaskState.SUCCEED || taskState2 == TaskState.FAILED || taskState2 == (taskState = TaskState.PAUSE) || taskState2 == TaskState.CANCEL || taskState2 == TaskState.DISABLE) {
            QLog.w(TAG, "任务暂停失败：任务状态不允许暂停");
            return false;
        }
        task.pause();
        Future future = task.getFuture();
        boolean zCancel = future != null ? future.cancel(true) : true;
        if (zCancel) {
            QLog.w(TAG, "暂停任务成功！");
            task.setTaskState(taskState);
        } else {
            QLog.w(TAG, "暂停任务失败！");
        }
        return zCancel;
    }

    public boolean resumeTask(int i10) {
        TaskType taskType = TaskType.UPLOAD_TASK;
        Task task = getTask(this.uploadTaskList, i10);
        if (task == null) {
            task = getTask(this.downloadTaskList, i10);
            taskType = TaskType.DOWNLOAD_TASK;
        }
        if (task == null) {
            task = getTask(this.cmdTaskList, i10);
            taskType = TaskType.CMD_TASK;
        }
        if (task == null) {
            QLog.w(TAG, "恢复任务失败：不存在该任务");
            return false;
        }
        if (task.getTaskState() != TaskState.PAUSE) {
            QLog.w(TAG, "任务恢复失败：任务状态不允许恢复");
            return false;
        }
        task.resume();
        task.setTaskState(TaskState.WAITING);
        QLog.w(TAG, "恢复任务成功！");
        int i11 = AnonymousClass2.$SwitchMap$com$tencent$cos$task$TaskType[taskType.ordinal()];
        if (i11 == 1) {
            task.setFuture(this.cmdExecutor.submit(task));
        } else if (i11 == 2) {
            task.setFuture(this.downloadExecutor.submit(task));
        } else if (i11 == 3) {
            task.setFuture(this.uploadExecutor.submit(task));
        }
        return true;
    }

    public COSResult sendCmdRequest(COSRequest cOSRequest) {
        CmdTask cmdTask = new CmdTask(new HttpRequest(cOSRequest), this.config, this.okHttpClient);
        cmdTask.setTaskState(TaskState.WAITING);
        this.cmdTaskList.add(cmdTask);
        cmdTask.setTaskStateListener(new TaskStateChanageOperator(this.cmdTaskList, cmdTask));
        cmdTask.setFuture(this.cmdExecutor.submit(cmdTask));
        try {
            return (COSResult) cmdTask.getFuture().get();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
            return null;
        } catch (CancellationException e11) {
            QLog.w(TAG, "cancellationException", e11);
            return null;
        } catch (ExecutionException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public COSResult sendDownloadRequest(GetObjectRequest getObjectRequest) {
        DownloadTask downloadTask = new DownloadTask(new HttpRequest(getObjectRequest), this.config, this.okHttpClient);
        downloadTask.setTaskState(TaskState.WAITING);
        this.downloadTaskList.add(downloadTask);
        downloadTask.setTaskStateListener(new TaskStateChanageOperator(this.downloadTaskList, downloadTask));
        downloadTask.setFuture(this.downloadExecutor.submit(downloadTask));
        try {
            return (COSResult) downloadTask.getFuture().get();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
            return null;
        } catch (CancellationException e11) {
            QLog.w(TAG, "cancellationException", e11);
            return null;
        } catch (ExecutionException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public COSResult sendUploadRequest(PutObjectRequest putObjectRequest) {
        UploadTask uploadTask = new UploadTask(new HttpRequest(putObjectRequest), this.config, this.okHttpClient);
        uploadTask.setTaskState(TaskState.WAITING);
        this.uploadTaskList.add(uploadTask);
        uploadTask.setTaskStateListener(new TaskStateChanageOperator(this.uploadTaskList, uploadTask));
        uploadTask.setFuture(this.uploadExecutor.submit(uploadTask));
        try {
            return (COSResult) uploadTask.getFuture().get();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
            return null;
        } catch (CancellationException e11) {
            QLog.w(TAG, "cancellationException", e11);
            return null;
        } catch (ExecutionException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public COSResult sendUploadSliceRequest(PutObjectRequest putObjectRequest) {
        SliceUploadTask sliceUploadTask = new SliceUploadTask(new HttpRequest(putObjectRequest), this.config, this.okHttpClient);
        sliceUploadTask.setTaskState(TaskState.WAITING);
        this.uploadTaskList.add(sliceUploadTask);
        sliceUploadTask.setTaskStateListener(new TaskStateChanageOperator(this.uploadTaskList, sliceUploadTask));
        sliceUploadTask.setFuture(this.uploadExecutor.submit(sliceUploadTask));
        try {
            return (COSResult) sliceUploadTask.getFuture().get();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
            return null;
        } catch (CancellationException e11) {
            QLog.w(TAG, "cancellationException", e11);
            return null;
        } catch (ExecutionException e12) {
            e12.printStackTrace();
            return null;
        }
    }
}
