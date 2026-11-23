.class public Lcom/byazt/ymw/a$1;
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
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ymw/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/a$1;->c:Lcom/byazt/ymw/a;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/a$1;->c:Lcom/byazt/ymw/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ymw/a;->c(Lcom/byazt/ymw/a;)Lcom/byazt/pop/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/ymw/a$1;->c:Lcom/byazt/ymw/a;

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
    invoke-interface {v0}, Lcom/byazt/pop/c;->c()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
