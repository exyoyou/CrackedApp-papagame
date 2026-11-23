package org.cocos2dx.lib;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxHandler extends Handler {
    public static final int HANDLER_SHOW_DIALOG = 1;
    public static final int HANDLER_SHOW_EDITBOX_DIALOG = 2;
    private WeakReference<Cocos2dxActivity> mActivity;

    public static class DialogMessage {
        public String message;
        public String titile;

        public DialogMessage(String str, String str2) {
            this.titile = str;
            this.message = str2;
        }
    }

    public static class EditBoxMessage {
        public String content;
        public int inputFlag;
        public int inputMode;
        public int maxLength;
        public int returnType;
        public String title;

        public EditBoxMessage(String str, String str2, int i10, int i11, int i12, int i13) {
            this.content = str2;
            this.title = str;
            this.inputMode = i10;
            this.inputFlag = i11;
            this.returnType = i12;
            this.maxLength = i13;
        }
    }

    public Cocos2dxHandler(Cocos2dxActivity cocos2dxActivity) {
        this.mActivity = new WeakReference<>(cocos2dxActivity);
    }

    private void showDialog(Message message) {
        Cocos2dxActivity cocos2dxActivity = this.mActivity.get();
        DialogMessage dialogMessage = (DialogMessage) message.obj;
        new AlertDialog.Builder(cocos2dxActivity).setTitle(dialogMessage.titile).setMessage(dialogMessage.message).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: org.cocos2dx.lib.Cocos2dxHandler.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
            }
        }).create().show();
    }

    private void showEditBoxDialog(Message message) {
        EditBoxMessage editBoxMessage = (EditBoxMessage) message.obj;
        new Cocos2dxEditBoxDialog(this.mActivity.get(), editBoxMessage.title, editBoxMessage.content, editBoxMessage.inputMode, editBoxMessage.inputFlag, editBoxMessage.returnType, editBoxMessage.maxLength).show();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            showDialog(message);
        } else {
            if (i10 != 2) {
                return;
            }
            showEditBoxDialog(message);
        }
    }
}
