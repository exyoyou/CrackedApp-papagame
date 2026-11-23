.class Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 16
    .line 17
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->b(Lcom/join/mgps/activity/GameSearchFavoriteActivity;I)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->b:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    return-void
.end method
