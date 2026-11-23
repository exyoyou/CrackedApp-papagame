.class Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onConnectivityChanged(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/m;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$300(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
