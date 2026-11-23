.class public Lcom/byazt/ck/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25b,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ck/uj;->tt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ck/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ck/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ck/uj$1;->c:Lcom/byazt/ck/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ck/uj$1;->c:Lcom/byazt/ck/uj;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/ck/uj;->c(Lcom/byazt/ck/uj;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "prime_rit_count"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
