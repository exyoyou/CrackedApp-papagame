.class public Lorg/hmwebrtc/log/WebrtcLoggableHelp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/Loggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;
    }
.end annotation


# static fields
.field public static final FIELD_NAME:Ljava/lang/String; = "HMRtc-Log-V1"

.field public static final HMRTC_LOG_DEBUGMODE_DEFAULT_CFG:Ljava/lang/String; = "enable:true,level:1,singleThread:false,logcat:false,maxBytes:32768,uploadInterval:5000"

.field private static final HMRTC_LOG_V1_CFG_FILENAME:Ljava/lang/String; = "HMRtc-Log-V1.cfg"

.field public static final HMRTC_LOG_V1_DEFAULT_CFG:Ljava/lang/String; = "enable:false,level:2,singleThread:false,logcat:true,logPath:\\sdcard\\hm_rtc_debug\\hm_rtc.log"

.field private static final TAG:Ljava/lang/String; = "WebrtcLoggableHelp"


# instance fields
.field private mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

.field private mDefaultLogPath:Ljava/lang/String;

.field private mLogMemSink:Lorg/hmwebrtc/log/LogMemSink;

.field private mLogcat:Lorg/hmwebrtc/log/LogApi$LogSink;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    const-string v1, "enable:false,level:2,singleThread:false,logcat:true,logPath:\\sdcard\\hm_rtc_debug\\hm_rtc.log"

    invoke-direct {v0, v1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 23
    invoke-static {v0, p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->initializte()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    const-string v1, "enable:false,level:2,singleThread:false,logcat:true,logPath:\\sdcard\\hm_rtc_debug\\hm_rtc.log"

    invoke-direct {v0, v1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 27
    invoke-static {v0, p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$102(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;J)J

    .line 29
    invoke-direct {p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->initializte()V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mDefaultLogPath:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 4
    invoke-static {p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    const-string p2, "hm_rtc.log"

    invoke-static {p2}, Lorg/hmwebrtc/utils/PathUtils$Inject;->getConfigFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->initializte()V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mDefaultLogPath:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 14
    invoke-static {p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    const-string p2, "hm_rtc.log"

    invoke-static {p2}, Lorg/hmwebrtc/utils/PathUtils$Inject;->getConfigFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->initializte([Ljava/lang/String;)V

    return-void
.end method

.method public static DispatchCommand(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static HasInjectConfgFile()Z
    .locals 1

    .line 1
    const-string v0, "HMRtc-Log-V1.cfg"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/utils/PathUtils$Inject;->isExistConfigFile(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private initializte()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/hmwebrtc/log/LogCatSink;

    invoke-direct {v0}, Lorg/hmwebrtc/log/LogCatSink;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mLogcat:Lorg/hmwebrtc/log/LogApi$LogSink;

    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$200(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Z

    move-result v0

    invoke-static {v0}, Lorg/hmwebrtc/log/LogApi;->initializate(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->terminate()V

    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$200(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Z

    move-result v0

    invoke-static {v0}, Lorg/hmwebrtc/log/LogApi;->initializate(Z)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$300(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)I

    move-result v0

    invoke-static {v0}, Lorg/hmwebrtc/log/LogApi;->setLevel(I)V

    .line 7
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getSinkCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    :try_start_0
    new-instance v0, Lorg/hmwebrtc/log/LogFileSink;

    iget-object v1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v2}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$100(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hmwebrtc/log/LogFileSink;-><init>(Ljava/lang/String;JLorg/hmwebrtc/log/LogFileSink$FileLogObserve;)V

    .line 9
    invoke-static {v0}, Lorg/hmwebrtc/log/LogApi;->registerSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log file exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$400(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->EnableLogcat(Z)V

    const-string v0, "^_^"

    const-string v1, "   "

    .line 12
    invoke-static {v0, v1}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "************************************* WebrtcLoggableHelp start ************************************************"

    .line 13
    invoke-static {v0, v2}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v1}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initializte([Ljava/lang/String;)V
    .locals 7

    .line 15
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$200(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Z

    move-result v1

    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$100(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$500(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J

    move-result-wide v4

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/hmwebrtc/log/LogApi;->initializate(ZJJ[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->terminate()V

    .line 18
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$200(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Z

    move-result v1

    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$100(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$500(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J

    move-result-wide v4

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/hmwebrtc/log/LogApi;->initializate(ZJJ[Ljava/lang/String;)Z

    .line 19
    :cond_1
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$300(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)I

    move-result p1

    invoke-static {p1}, Lorg/hmwebrtc/log/LogApi;->setLevel(I)V

    .line 20
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getSinkCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 21
    :try_start_0
    new-instance p1, Lorg/hmwebrtc/log/LogMemSink;

    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$100(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/hmwebrtc/log/LogMemSink;-><init>(J)V

    .line 22
    iput-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mLogMemSink:Lorg/hmwebrtc/log/LogMemSink;

    .line 23
    invoke-static {p1}, Lorg/hmwebrtc/log/LogApi;->registerSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log file exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const-string p1, "WebrtcLoggableHelp"

    const-string v0, "   "

    .line 25
    invoke-static {p1, v0}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "************************************* WebrtcLoggableHelp start ************************************************"

    .line 26
    invoke-static {p1, v1}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p1, v0}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private toLogApiLevel(Lorg/hmwebrtc/Logging$Severity;)I
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_VERBOSE:Lorg/hmwebrtc/Logging$Severity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_INFO:Lorg/hmwebrtc/Logging$Severity;

    .line 8
    .line 9
    if-ne v0, p1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    return p1

    .line 13
    :cond_1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_WARNING:Lorg/hmwebrtc/Logging$Severity;

    .line 14
    .line 15
    if-ne v0, p1, :cond_2

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    return p1

    .line 19
    :cond_2
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_ERROR:Lorg/hmwebrtc/Logging$Severity;

    .line 20
    .line 21
    if-ne v0, p1, :cond_3

    .line 22
    .line 23
    const/4 p1, 0x4

    .line 24
    return p1

    .line 25
    :cond_3
    return v1
.end method

.method private toWebrtcLogLevel(I)Lorg/hmwebrtc/Logging$Severity;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/hmwebrtc/Logging$Severity;->LS_VERBOSE:Lorg/hmwebrtc/Logging$Severity;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-ne v0, p1, :cond_1

    .line 8
    .line 9
    sget-object p1, Lorg/hmwebrtc/Logging$Severity;->LS_INFO:Lorg/hmwebrtc/Logging$Severity;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    const/4 v0, 0x3

    .line 13
    if-ne v0, p1, :cond_2

    .line 14
    .line 15
    sget-object p1, Lorg/hmwebrtc/Logging$Severity;->LS_WARNING:Lorg/hmwebrtc/Logging$Severity;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_2
    const/4 v0, 0x4

    .line 19
    if-ne v0, p1, :cond_3

    .line 20
    .line 21
    sget-object p1, Lorg/hmwebrtc/Logging$Severity;->LS_ERROR:Lorg/hmwebrtc/Logging$Severity;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_3
    sget-object p1, Lorg/hmwebrtc/Logging$Severity;->LS_VERBOSE:Lorg/hmwebrtc/Logging$Severity;

    .line 25
    .line 26
    return-object p1
.end method


# virtual methods
.method public EnableLogcat(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mLogcat:Lorg/hmwebrtc/log/LogApi$LogSink;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/log/LogApi;->unregisterSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mLogcat:Lorg/hmwebrtc/log/LogApi$LogSink;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lorg/hmwebrtc/log/LogApi;->registerSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V

    .line 13
    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    const-string v0, "enable logcat..."

    .line 18
    .line 19
    invoke-static {p1, v0}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    const-string v0, "^_^"

    .line 2
    .line 3
    const-string v1, "************************************* WebrtcLoggableHelp stop************************************************"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->terminate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getLevel()Lorg/hmwebrtc/Logging$Severity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mConfig:Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->access$300(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->toWebrtcLogLevel(I)Lorg/hmwebrtc/Logging$Severity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public onLogMessage(Ljava/lang/String;Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_VERBOSE:Lorg/hmwebrtc/Logging$Severity;

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    invoke-static {p3, p1}, Lorg/hmwebrtc/log/LogApi;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_INFO:Lorg/hmwebrtc/Logging$Severity;

    .line 10
    .line 11
    if-ne v0, p2, :cond_1

    .line 12
    .line 13
    invoke-static {p3, p1}, Lorg/hmwebrtc/log/LogApi;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_WARNING:Lorg/hmwebrtc/Logging$Severity;

    .line 18
    .line 19
    if-ne v0, p2, :cond_2

    .line 20
    .line 21
    invoke-static {p3, p1}, Lorg/hmwebrtc/log/LogApi;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_ERROR:Lorg/hmwebrtc/Logging$Severity;

    .line 26
    .line 27
    if-ne v0, p2, :cond_3

    .line 28
    .line 29
    invoke-static {p3, p1}, Lorg/hmwebrtc/log/LogApi;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_NONE:Lorg/hmwebrtc/Logging$Severity;

    .line 34
    .line 35
    if-ne v0, p2, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    invoke-static {p3, p1}, Lorg/hmwebrtc/log/LogApi;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public setLogMemSinkCB(Lorg/hmwebrtc/log/LogUploadCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->mLogMemSink:Lorg/hmwebrtc/log/LogMemSink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/log/LogMemSink;->setUploadLogCB(Lorg/hmwebrtc/log/LogUploadCallBack;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
