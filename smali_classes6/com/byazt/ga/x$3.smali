.class public Lcom/byazt/ga/x$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ga/x$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x3c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/x;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/ga/x;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/x$3;->ve:Lcom/byazt/ga/x;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/ga/x$3;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ga/x$3;->tt:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ga/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/ga/x$3;->ve:Lcom/byazt/ga/x;

    .line 2
    .line 3
    iget v0, p0, Lcom/byazt/ga/x$3;->c:I

    .line 4
    .line 5
    iget v1, p0, Lcom/byazt/ga/x$3;->tt:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/byazt/ga/x;->c(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
