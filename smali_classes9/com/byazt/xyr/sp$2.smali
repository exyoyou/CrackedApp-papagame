.class public Lcom/byazt/xyr/sp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x219,
        0x250
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xyr/sp;->c(Lcom/byazt/xj/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic tt:Lcom/byazt/xj/ve;

.field public final synthetic ve:Lcom/byazt/xyr/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/xyr/sp;Landroid/view/View;Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xyr/sp$2;->ve:Lcom/byazt/xyr/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xyr/sp$2;->c:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/xyr/sp$2;->tt:Lcom/byazt/xj/ve;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xyr/sp$2;->c:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/xyr/sp$2;->ve:Lcom/byazt/xyr/sp;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/xyr/sp$2;->tt:Lcom/byazt/xj/ve;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/byazt/xyr/sp;->c(Lcom/byazt/xyr/sp;Lcom/byazt/xj/ve;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
