.class Lcom/join/mgps/adapter/x6$b;
.super Lcom/join/mgps/callbacks/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x6;->U(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GInfoBean;

.field final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic d:Lcom/join/mgps/adapter/x6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gInfoBean",
            "val$searchDataBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x6$b;->b:Lcom/join/mgps/dto/GInfoBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/x6$b;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/callbacks/w;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
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
    move-result-object v0

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/adapter/x6;->G(Lcom/join/mgps/adapter/x6;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->b:Lcom/join/mgps/dto/GInfoBean;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->b:Lcom/join/mgps/dto/GInfoBean;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->b:Lcom/join/mgps/dto/GInfoBean;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/join/mgps/adapter/x6$b;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/join/mgps/adapter/x6;->H(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual/range {v0 .. v9}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onClickCover()V
    .locals 11

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/mgps/adapter/x6;->G(Lcom/join/mgps/adapter/x6;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/join/mgps/adapter/x6$b;->b:Lcom/join/mgps/dto/GInfoBean;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/join/mgps/adapter/x6$b;->b:Lcom/join/mgps/dto/GInfoBean;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lcom/join/mgps/adapter/x6$b;->b:Lcom/join/mgps/dto/GInfoBean;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget-object v5, p0, Lcom/join/mgps/adapter/x6$b;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iget-object v6, p0, Lcom/join/mgps/adapter/x6$b;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 39
    .line 40
    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iget-object v7, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-object v8, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 51
    .line 52
    invoke-virtual {v8}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object v9, p0, Lcom/join/mgps/adapter/x6$b;->d:Lcom/join/mgps/adapter/x6;

    .line 57
    .line 58
    iget-object v10, p0, Lcom/join/mgps/adapter/x6$b;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 59
    .line 60
    invoke-static {v9, v10}, Lcom/join/mgps/adapter/x6;->H(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual/range {v0 .. v9}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
