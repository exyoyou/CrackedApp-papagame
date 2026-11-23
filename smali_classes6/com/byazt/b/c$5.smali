.class public Lcom/byazt/b/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x64
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/c;->ve(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/b/c;


# direct methods
.method public constructor <init>(Lcom/byazt/b/c;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/c$5;->ve:Lcom/byazt/b/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/b/c$5;->c:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/b/c$5;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/b/c$5;->ve:Lcom/byazt/b/c;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/b/c$5;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/b/c;->ve(I)Lcom/byazt/u/ve;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/b/c$5;->ve:Lcom/byazt/b/c;

    .line 9
    .line 10
    iget v1, p0, Lcom/byazt/b/c$5;->c:I

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/byazt/b/c$5;->tt:Z

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/byazt/b/c;->tt(Lcom/byazt/b/c;IZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
