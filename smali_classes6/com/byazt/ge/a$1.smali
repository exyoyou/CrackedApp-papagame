.class public Lcom/byazt/ge/a$1;
.super Lcom/byazt/qq/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f6,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ge/a;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ge/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ge/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ge/a$1;->c:Lcom/byazt/ge/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/qq/da;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public tt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ge/a$1;->c:Lcom/byazt/ge/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yp()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ge/a$1;->c:Lcom/byazt/ge/a;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->nb()Lcom/byazt/nr/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/byazt/ge/a$1$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/byazt/ge/a$1$1;-><init>(Lcom/byazt/ge/a$1;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x64

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
