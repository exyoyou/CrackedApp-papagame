.class public final synthetic Lcom/kongzue/dialogx/util/views/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

.field public final synthetic b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/d;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/d;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/d;->a:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/d;->b:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;

    invoke-static {v0, v1, p1, p2}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->a(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
