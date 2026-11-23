.class public Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;
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
        0x4f5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->c(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->tt:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/ka/n;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/ka/c;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->tt:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/byazt/ka/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->tt:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
