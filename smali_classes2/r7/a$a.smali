.class public Lr7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/a$a$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "ListenerHandler"


# instance fields
.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Lr7/a$a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lr7/a$a;->c(Landroid/app/Activity;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lr7/a$a;->b:Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lr7/a$a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr7/a$a;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private c(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr7/a$a;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public d(Lr7/a$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr7/a$a;->e:Lr7/a$a$a;

    .line 2
    .line 3
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr7/a$a;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lr7/a$a;->d:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iput v0, p0, Lr7/a$a;->d:I

    .line 17
    .line 18
    iput v0, p0, Lr7/a$a;->c:I

    .line 19
    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    if-eq v1, v0, :cond_1

    .line 23
    .line 24
    iput v0, p0, Lr7/a$a;->d:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :goto_0
    if-eqz v1, :cond_4

    .line 28
    .line 29
    iget v1, p0, Lr7/a$a;->c:I

    .line 30
    .line 31
    if-ne v1, v0, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    sub-int v3, v1, v0

    .line 36
    .line 37
    :goto_1
    iget-object v0, p0, Lr7/a$a;->e:Lr7/a$a$a;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-interface {v0, v2, v3}, Lr7/a$a$a;->a(ZI)V

    .line 42
    .line 43
    .line 44
    :cond_4
    return-void
.end method
