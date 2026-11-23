.class Lde/robv/android/xposed/XSharedPreferences$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/XSharedPreferences;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/XSharedPreferences$1;->this$0:Lde/robv/android/xposed/XSharedPreferences;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences$1;->this$0:Lde/robv/android/xposed/XSharedPreferences;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lde/robv/android/xposed/XSharedPreferences$1;->this$0:Lde/robv/android/xposed/XSharedPreferences;

    .line 5
    .line 6
    invoke-static {v1}, Lde/robv/android/xposed/XSharedPreferences;->access$000(Lde/robv/android/xposed/XSharedPreferences;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method
