.class public Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;
.super Lcom/byazt/ka/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x50,
        0x92e,
        0x92f,
        0x14b,
        0x4f4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->c(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->c:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/ka/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "TMe"

    const-string v1, "-------=----- onGranted"

    .line 1
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$c;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$c;-><init>()V

    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->c:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-------=----- onDenied: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$c;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$c;-><init>()V

    invoke-static {p1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->c:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
