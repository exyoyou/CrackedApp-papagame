.class public Lcom/byazt/ymw/a$5;
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
        0x18a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/a;->c(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/ymw/a;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/a;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/a$5;->uj:Lcom/byazt/ymw/a;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/ymw/a$5;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ymw/a$5;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/ymw/a$5;->ve:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/ymw/a$5;->uj:Lcom/byazt/ymw/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ymw/a;->c(Lcom/byazt/ymw/a;)Lcom/byazt/pop/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/ymw/a$5;->uj:Lcom/byazt/ymw/a;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/byazt/ymw/a;->c(Lcom/byazt/ymw/a;Lcom/byazt/pop/c;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-wide v1, p0, Lcom/byazt/ymw/a$5;->c:J

    .line 17
    .line 18
    iget-object v3, p0, Lcom/byazt/ymw/a$5;->tt:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/byazt/ymw/a$5;->ve:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/byazt/pop/c;->c(JLjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
