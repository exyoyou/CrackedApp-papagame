.class public final Lcom/join/mgps/fragment/u4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u4;->m0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/u4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u4$c;->b:Lcom/join/mgps/fragment/u4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4$c;->b:Lcom/join/mgps/fragment/u4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/u4;->X()Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->r()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
