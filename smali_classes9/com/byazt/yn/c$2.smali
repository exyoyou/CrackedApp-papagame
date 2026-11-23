.class public Lcom/byazt/yn/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x54d,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yn/c;->c(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/yn/c;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/yn/c;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yn/c$2;->uj:Lcom/byazt/yn/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/yn/c$2;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/yn/c$2;->tt:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/yn/c$2;->ve:I

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/yn/c$2;->uj:Lcom/byazt/yn/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/yn/c;->x(Lcom/byazt/yn/c;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/yn/BrokenImage;

    .line 8
    .line 9
    iget v1, p0, Lcom/byazt/yn/c$2;->c:I

    .line 10
    .line 11
    iget v2, p0, Lcom/byazt/yn/c$2;->tt:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/byazt/yn/BrokenImage;->c(II)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/yn/c$2;->uj:Lcom/byazt/yn/c;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/yn/c;->i(Lcom/byazt/yn/c;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/byazt/yn/BrokenImage;

    .line 23
    .line 24
    iget v1, p0, Lcom/byazt/yn/c$2;->ve:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/yn/BrokenImage;->c(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
