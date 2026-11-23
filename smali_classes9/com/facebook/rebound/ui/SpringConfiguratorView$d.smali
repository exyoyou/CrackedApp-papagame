.class Lcom/facebook/rebound/ui/SpringConfiguratorView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    .line 1
    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const/4 v0, 0x0

    .line 8
    const v1, 0x47c35000    # 100000.0f

    .line 9
    .line 10
    .line 11
    if-ne p1, p3, :cond_0

    .line 12
    .line 13
    int-to-float p3, p2

    .line 14
    const/high16 v2, 0x43480000    # 200.0f

    .line 15
    .line 16
    mul-float p3, p3, v2

    .line 17
    .line 18
    div-float/2addr p3, v1

    .line 19
    add-float/2addr p3, v0

    .line 20
    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->g(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/k;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    float-to-double v3, p3

    .line 27
    invoke-static {v3, v4}, Lcom/facebook/rebound/g;->d(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    iput-wide v5, v2, Lcom/facebook/rebound/k;->b:D

    .line 32
    .line 33
    invoke-static {}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l()Ljava/text/DecimalFormat;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p3, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "T:"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 68
    .line 69
    invoke-static {p3}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->a(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    if-ne p1, p3, :cond_1

    .line 74
    .line 75
    int-to-float p1, p2

    .line 76
    const/high16 p2, 0x42480000    # 50.0f

    .line 77
    .line 78
    mul-float p1, p1, p2

    .line 79
    .line 80
    div-float/2addr p1, v1

    .line 81
    add-float/2addr p1, v0

    .line 82
    iget-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->g(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/k;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    float-to-double v0, p1

    .line 89
    invoke-static {v0, v1}, Lcom/facebook/rebound/g;->a(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    iput-wide v2, p2, Lcom/facebook/rebound/k;->a:D

    .line 94
    .line 95
    invoke-static {}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l()Ljava/text/DecimalFormat;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 104
    .line 105
    invoke-static {p2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->b(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v0, "F:"

    .line 115
    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
