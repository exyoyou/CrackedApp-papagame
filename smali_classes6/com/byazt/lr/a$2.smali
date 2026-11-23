.class public Lcom/byazt/lr/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ou/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lr/a;->tt(Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nn/n;

.field public final synthetic n:Lcom/byazt/lr/a;

.field public final synthetic tt:Lcom/byazt/lr/x;

.field public final synthetic uj:[B

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Lcom/byazt/lr/x;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lr/a$2;->n:Lcom/byazt/lr/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/lr/a$2;->c:Lcom/byazt/nn/n;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/lr/a$2;->tt:Lcom/byazt/lr/x;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/lr/a$2;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/lr/a$2;->uj:[B

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/lr/a$2;->n:Lcom/byazt/lr/a;

    iget-object v1, p0, Lcom/byazt/lr/a$2;->c:Lcom/byazt/nn/n;

    iget-object v2, p0, Lcom/byazt/lr/a$2;->tt:Lcom/byazt/lr/x;

    invoke-static {v0, v1, p1, v2}, Lcom/byazt/lr/a;->c(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Ljava/lang/String;Lcom/byazt/lr/x;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/byazt/lr/a$2;->n:Lcom/byazt/lr/a;

    iget-object v0, p0, Lcom/byazt/lr/a$2;->c:Lcom/byazt/nn/n;

    iget-object v1, p0, Lcom/byazt/lr/a$2;->ve:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/lr/a$2;->uj:[B

    iget-object v3, p0, Lcom/byazt/lr/a$2;->tt:Lcom/byazt/lr/x;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/lr/a;->tt(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V

    return-void
.end method
