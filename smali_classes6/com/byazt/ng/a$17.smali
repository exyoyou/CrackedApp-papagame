.class public final Lcom/byazt/ng/a$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x586
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic tt:Lcom/byazt/yl/ve;

.field public final synthetic uj:Lcom/byazt/nbs/da;

.field public final synthetic ve:Lcom/byazt/ll/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$17;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$17;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ng/a$17;->ve:Lcom/byazt/ll/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ng/a$17;->uj:Lcom/byazt/nbs/da;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ng/a$17;->c:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/ng/a$17;->tt:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/ng/a$17;->ve:Lcom/byazt/ll/tt;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/byazt/ng/a$17;->uj:Lcom/byazt/nbs/da;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
