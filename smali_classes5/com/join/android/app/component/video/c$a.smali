.class Lcom/join/android/app/component/video/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/video/StandardVideoView$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->p(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    const-string v0, "MyListViewVideoHelper"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "099999 "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Lcom/join/android/app/component/video/c;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 13
    .line 14
    const-string v0, "res:///2131235672"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Lcom/join/android/app/component/video/c;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Lcom/join/android/app/component/video/c;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    const-string p1, "aaaaaaaaaaa "

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
