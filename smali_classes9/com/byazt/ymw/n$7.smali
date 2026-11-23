.class public Lcom/byazt/ymw/n$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0x248
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/n;->c(ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/ymw/n;

.field public final synthetic c:Z

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic tt:I

.field public final synthetic uj:I

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/n;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/n$7;->a:Lcom/byazt/ymw/n;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/ymw/n$7;->c:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ymw/n$7;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ymw/n$7;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/ymw/n$7;->uj:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/ymw/n$7;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/n$7;->a:Lcom/byazt/ymw/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ymw/n;->c(Lcom/byazt/ymw/n;)Lcom/byazt/tn/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/byazt/ymw/n$7;->c:Z

    .line 10
    .line 11
    iget v3, p0, Lcom/byazt/ymw/n$7;->tt:I

    .line 12
    .line 13
    iget-object v4, p0, Lcom/byazt/ymw/n$7;->ve:Ljava/lang/String;

    .line 14
    .line 15
    iget v5, p0, Lcom/byazt/ymw/n$7;->uj:I

    .line 16
    .line 17
    iget-object v6, p0, Lcom/byazt/ymw/n$7;->n:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/tn/c;->c(ZILjava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
