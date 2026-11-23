.class Lcom/join/mgps/adapter/o5$g;
.super Lcom/join/mgps/callbacks/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/o5;->S(Lcom/join/mgps/adapter/o5$m;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field final synthetic c:Lcom/join/mgps/adapter/o5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$g;->c:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/o5$g;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/callbacks/w;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "objects"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/callbacks/w;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/join/mgps/adapter/o5$g;->c:Lcom/join/mgps/adapter/o5;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/join/mgps/adapter/o5;->o(Lcom/join/mgps/adapter/o5;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object v0, p0, Lcom/join/mgps/adapter/o5$g;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/o5$g;->c:Lcom/join/mgps/adapter/o5;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/adapter/o5$g;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lcom/join/mgps/adapter/o5;->p(Lcom/join/mgps/adapter/o5;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/adapter/o5$g;->c:Lcom/join/mgps/adapter/o5;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/mgps/adapter/o5$g;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p1, p2, v0}, Lcom/join/mgps/adapter/o5;->q(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onClickCover()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/callbacks/w;->onClickCover()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/o5$g;->c:Lcom/join/mgps/adapter/o5;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/adapter/o5;->o(Lcom/join/mgps/adapter/o5;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/join/mgps/adapter/o5$g;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/adapter/o5$g;->c:Lcom/join/mgps/adapter/o5;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/o5$g;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/join/mgps/adapter/o5;->p(Lcom/join/mgps/adapter/o5;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/adapter/o5$g;->c:Lcom/join/mgps/adapter/o5;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/adapter/o5$g;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v1, v2}, Lcom/join/mgps/adapter/o5;->q(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
