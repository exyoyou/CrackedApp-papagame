.class Lcom/join/android/app/mgsim/wufun/databinding/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/mgsim/wufun/databinding/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/mgsim/wufun/databinding/i0;


# direct methods
.method constructor <init>(Lcom/join/android/app/mgsim/wufun/databinding/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i0$a;->a:Lcom/join/android/app/mgsim/wufun/databinding/i0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i0$a;->a:Lcom/join/android/app/mgsim/wufun/databinding/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h0;->e:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i0$a;->a:Lcom/join/android/app/mgsim/wufun/databinding/i0;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/h0;->k:Lcom/join/kotlin/quark/viewmodel/CreateSourceHopeViewModel;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/kotlin/quark/viewmodel/CreateSourceHopeViewModel;->getDescData()Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_1
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method
