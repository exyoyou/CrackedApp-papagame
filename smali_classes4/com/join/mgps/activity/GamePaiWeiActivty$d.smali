.class Lcom/join/mgps/activity/GamePaiWeiActivty$d;
.super Lcom/join/android/app/common/http/d$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/android/app/common/http/d$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

.field final synthetic c:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$rankListBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/android/app/common/http/d$p;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "e"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->l(Lcom/join/mgps/activity/GamePaiWeiActivty;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "\u56de\u653e\u5931\u8d25\uff01"

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->N(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 11
    .line 12
    iget v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->C:I

    .line 13
    .line 14
    const/16 v2, 0xe

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getPlay_id()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->o(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
