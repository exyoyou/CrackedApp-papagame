.class public Lnet/lucode/hackware/magicindicator/e;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/lucode/hackware/magicindicator/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/e$a;-><init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
