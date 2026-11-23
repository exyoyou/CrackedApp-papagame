.class Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ll0/c;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 14
    .line 15
    const-string p3, "    FitSystemBarUtils: RootView get Insets"

    .line 16
    .line 17
    invoke-virtual {p2, p3}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p3, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 29
    .line 30
    iget-object p4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 31
    .line 32
    iget-object p4, p4, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    .line 33
    .line 34
    invoke-direct {p3, p4}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;-><init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p1, p3}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Landroidx/core/view/WindowInsetsCompat;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$a;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 44
    .line 45
    const-string p2, "    FitSystemBarUtils: RootView not get Insets"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->B(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
