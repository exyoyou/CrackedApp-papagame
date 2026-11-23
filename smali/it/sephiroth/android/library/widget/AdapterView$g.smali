.class Lit/sephiroth/android/library/widget/AdapterView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lit/sephiroth/android/library/widget/AdapterView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;Lit/sephiroth/android/library/widget/AdapterView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView$g;-><init>(Lit/sephiroth/android/library/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->b:Lit/sephiroth/android/library/widget/AdapterView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->b:Lit/sephiroth/android/library/widget/AdapterView;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->c(Lit/sephiroth/android/library/widget/AdapterView;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->b:Lit/sephiroth/android/library/widget/AdapterView;

    .line 23
    .line 24
    invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->d(Lit/sephiroth/android/library/widget/AdapterView;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
