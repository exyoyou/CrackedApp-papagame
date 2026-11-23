.class Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;


# direct methods
.method constructor <init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

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
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 11
    .line 12
    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 17
    .line 18
    invoke-static {v2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Landroid/widget/TextView$BufferType;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
