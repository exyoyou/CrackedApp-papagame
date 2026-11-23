.class public Lcom/byazt/rs/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0x18b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rs/a;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rs/sp;

.field public final synthetic n:Lcom/byazt/rs/a;

.field public final synthetic tt:Lcom/byazt/rs/uj;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/rs/a;Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rs/a$4;->n:Lcom/byazt/rs/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rs/a$4;->c:Lcom/byazt/rs/sp;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/rs/a$4;->tt:Lcom/byazt/rs/uj;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/rs/a$4;->ve:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/rs/a$4;->uj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/rs/a$4;->c:Lcom/byazt/rs/sp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/rs/a$4;->tt:Lcom/byazt/rs/uj;

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/rs/a$4;->ve:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/rs/a$4;->uj:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/rs/sp;->c(Lcom/byazt/rs/uj;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
