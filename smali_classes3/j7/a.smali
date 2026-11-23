.class public Lj7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj7/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadLayout;
    .locals 6

    .line 1
    check-cast p1, Landroid/app/Activity;

    .line 2
    .line 3
    const v0, 0x1020002

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/kingja/loadsir/core/LoadLayout;

    .line 25
    .line 26
    invoke-direct {v4, p1, p2}, Lcom/kingja/loadsir/core/LoadLayout;-><init>(Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lcom/kingja/loadsir/callback/SuccessCallback;

    .line 30
    .line 31
    invoke-direct {v5, v2, p1, p2}, Lcom/kingja/loadsir/callback/SuccessCallback;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lcom/kingja/loadsir/core/LoadLayout;->setupSuccessLayout(Lcom/kingja/loadsir/callback/Callback;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/app/Activity;

    .line 2
    .line 3
    return p1
.end method
