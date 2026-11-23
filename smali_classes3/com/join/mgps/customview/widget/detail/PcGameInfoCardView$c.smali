.class Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field final synthetic c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "mContext",
            "width",
            "height"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;

    .line 6
    invoke-direct {p0, p3, p4}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 7
    iput-object p2, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->a()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c$a;-><init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07de

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a1a3a

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->b:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->c()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
