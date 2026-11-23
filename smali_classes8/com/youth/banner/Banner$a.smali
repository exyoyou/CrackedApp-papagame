.class Lcom/youth/banner/Banner$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/youth/banner/Banner;


# direct methods
.method constructor <init>(Lcom/youth/banner/Banner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/youth/banner/Banner;->a(Lcom/youth/banner/Banner;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/youth/banner/Banner;->b(Lcom/youth/banner/Banner;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/youth/banner/Banner;->c(Lcom/youth/banner/Banner;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/youth/banner/Banner;->a(Lcom/youth/banner/Banner;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/2addr v3, v1

    .line 31
    rem-int/2addr v2, v3

    .line 32
    add-int/2addr v2, v1

    .line 33
    invoke-static {v0, v2}, Lcom/youth/banner/Banner;->d(Lcom/youth/banner/Banner;I)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/youth/banner/Banner;->c(Lcom/youth/banner/Banner;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne v0, v1, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/youth/banner/Banner;->e(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/youth/banner/Banner;->c(Lcom/youth/banner/Banner;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/youth/banner/Banner;->g(Lcom/youth/banner/Banner;)Lcom/youth/banner/e;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/youth/banner/Banner;->f(Lcom/youth/banner/Banner;)Ljava/lang/Runnable;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/youth/banner/e;->d(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/youth/banner/Banner;->e(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/youth/banner/Banner;->c(Lcom/youth/banner/Banner;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/youth/banner/Banner;->g(Lcom/youth/banner/Banner;)Lcom/youth/banner/e;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/youth/banner/Banner;->f(Lcom/youth/banner/Banner;)Ljava/lang/Runnable;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/youth/banner/Banner$a;->b:Lcom/youth/banner/Banner;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/youth/banner/Banner;->h(Lcom/youth/banner/Banner;)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    int-to-long v2, v2

    .line 110
    invoke-virtual {v0, v1, v2, v3}, Lcom/youth/banner/e;->h(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_0
    return-void
.end method
