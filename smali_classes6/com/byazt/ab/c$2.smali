.class public Lcom/byazt/ab/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f5,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ab/c;->c(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ab/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ab/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ab/c$2;->c:Lcom/byazt/ab/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/ab/c$2;->c:Lcom/byazt/ab/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/ab/c;->tt(Lcom/byazt/ab/c;)Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/ab/c$2;->c:Lcom/byazt/ab/c;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/byazt/ab/c;->c()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/ab/c$2;->c:Lcom/byazt/ab/c;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/ab/c;->ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/byazt/zd/tt;->tt()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
