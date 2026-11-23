.class public Lcom/byazt/dyf/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dyf/n;->c(ILcom/byazt/nc/a;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/nc/a;

.field public final synthetic ve:Lcom/byazt/dyf/n;


# direct methods
.method public constructor <init>(Lcom/byazt/dyf/n;ILcom/byazt/nc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dyf/n$2;->ve:Lcom/byazt/dyf/n;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/dyf/n$2;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/dyf/n$2;->tt:Lcom/byazt/nc/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/dyf/n$2;->ve:Lcom/byazt/dyf/n;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/dyf/n;->c(Lcom/byazt/dyf/n;)Lcom/byazt/dyf/n$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/dyf/n$2;->ve:Lcom/byazt/dyf/n;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/dyf/n;->c(Lcom/byazt/dyf/n;)Lcom/byazt/dyf/n$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p0, Lcom/byazt/dyf/n$2;->c:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/dyf/n$2;->tt:Lcom/byazt/nc/a;

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lcom/byazt/dyf/n$c;->c(ILcom/byazt/nc/a;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
