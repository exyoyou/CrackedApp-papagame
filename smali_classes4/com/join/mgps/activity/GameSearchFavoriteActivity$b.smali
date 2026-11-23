.class Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->a(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 25
    .line 26
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
