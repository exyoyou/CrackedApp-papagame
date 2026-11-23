.class public final Lcom/byazt/lc/c$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x51f,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lc/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/xs/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ku/uj;

.field public final synthetic tt:Lcom/byazt/xs/ve;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/ku/uj;Lcom/byazt/xs/ve;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/lc/c$1;->c:Lcom/byazt/ku/uj;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/lc/c$1;->tt:Lcom/byazt/xs/ve;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/six/sp;->c()Lcom/byazt/six/sp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/lc/c$1;->c:Lcom/byazt/ku/uj;

    .line 6
    .line 7
    new-instance v2, Lcom/byazt/lc/c$1$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/byazt/lc/c$1$1;-><init>(Lcom/byazt/lc/c$1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/byazt/six/sp;->c(Lcom/byazt/ku/uj;Lcom/byazt/six/sp$c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
