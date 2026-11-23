.class Lcom/join/mgps/Util/UtilsMy$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->h1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/VolcanoOther;ZZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Z

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$gameId",
            "val$from",
            "val$fromType",
            "val$recPosition",
            "val$remarks",
            "val$nodeId",
            "val$volcannoOtherJson",
            "val$isFromRecomDown",
            "val$packagePath",
            "val$downType",
            "val$location",
            "val$ext",
            "val$where"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$q;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$q;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/Util/UtilsMy$q;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$q;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$q;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$q;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/join/mgps/Util/UtilsMy$q;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/join/mgps/Util/UtilsMy$q;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean p9, p0, Lcom/join/mgps/Util/UtilsMy$q;->i:Z

    .line 18
    .line 19
    iput-object p10, p0, Lcom/join/mgps/Util/UtilsMy$q;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput p11, p0, Lcom/join/mgps/Util/UtilsMy$q;->k:I

    .line 22
    .line 23
    iput p12, p0, Lcom/join/mgps/Util/UtilsMy$q;->l:I

    .line 24
    .line 25
    iput-object p13, p0, Lcom/join/mgps/Util/UtilsMy$q;->m:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p14, p0, Lcom/join/mgps/Util/UtilsMy$q;->n:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "duration"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$q;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    move-result-object p1

    const-string p2, "gameDownloadDetail"

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "_from"

    iget v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->c:I

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "_from_type"

    iget v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->d:I

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "recPosition"

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->e:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "remarks"

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "nodeId"

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "volcanoOther"

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->h:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    iget-boolean p2, p0, Lcom/join/mgps/Util/UtilsMy$q;->i:Z

    const-string v0, "fromRecomDown"

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "packagePath"

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$q;->j:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "downType"

    iget v1, p0, Lcom/join/mgps/Util/UtilsMy$q;->k:I

    invoke-virtual {p1, p2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "location"

    iget v1, p0, Lcom/join/mgps/Util/UtilsMy$q;->l:I

    invoke-virtual {p1, p2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "ext"

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$q;->m:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    iget-boolean p2, p0, Lcom/join/mgps/Util/UtilsMy$q;->i:Z

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    const-string p2, "where"

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->n:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "duration",
            "buttonBean"
        }
    .end annotation

    .line 1
    return-void
.end method
