.class public Lcom/byazt/ouz/da$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/da;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/ouz/da;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/da;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/da$1;->tt:Lcom/byazt/ouz/da;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ouz/da$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da$1;->tt:Lcom/byazt/ouz/da;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ouz/da;->c(Lcom/byazt/ouz/da;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/ouz/da$1;->tt:Lcom/byazt/ouz/da;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/ouz/da;->tt(Lcom/byazt/ouz/da;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/byazt/ouz/da$1;->c:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/ddx/uj;->sp(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
