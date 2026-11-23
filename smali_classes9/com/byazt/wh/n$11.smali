.class public Lcom/byazt/wh/n$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x497
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/n;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/wh/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/n;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/n$11;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/wh/n$11;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wh/n$11;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/wh/n$11;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/wh/n;->n(I)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/wh/n$11;->tt:Lcom/byazt/wh/n;

    .line 9
    .line 10
    iget v1, p0, Lcom/byazt/wh/n$11;->c:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/wh/n;->uj(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/wh/n$11;->tt:Lcom/byazt/wh/n;

    .line 16
    .line 17
    iget v1, p0, Lcom/byazt/wh/n$11;->c:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/wh/n;->u(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
