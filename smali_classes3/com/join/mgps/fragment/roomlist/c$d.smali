.class Lcom/join/mgps/fragment/roomlist/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/roomlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->N(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->N(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 42
    .line 43
    iget v1, v0, Lcom/join/mgps/fragment/roomlist/c;->n:F

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    cmpl-float v1, v1, v2

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    iget-object v0, v0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    int-to-float v0, v0

    .line 57
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const v2, 0x7f071617

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    int-to-float v1, v1

    .line 71
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 72
    .line 73
    mul-float v2, v2, v1

    .line 74
    .line 75
    cmpl-float v2, v0, v2

    .line 76
    .line 77
    if-lez v2, :cond_1

    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 80
    .line 81
    div-float/2addr v0, v1

    .line 82
    iput v0, v2, Lcom/join/mgps/fragment/roomlist/c;->n:F

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 86
    .line 87
    const/high16 v1, 0x3f800000    # 1.0f

    .line 88
    .line 89
    iput v1, v0, Lcom/join/mgps/fragment/roomlist/c;->n:F

    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->R(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/adapter/g2;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 98
    .line 99
    iget v1, v1, Lcom/join/mgps/fragment/roomlist/c;->n:F

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/g2;->h(F)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->N(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 111
    .line 112
    invoke-static {v1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->R(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/adapter/g2;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->R(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/adapter/g2;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$d;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 137
    .line 138
    iget-boolean v1, v0, Lcom/join/mgps/fragment/roomlist/c;->o:Z

    .line 139
    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    iget-object v1, v0, Lcom/join/mgps/fragment/roomlist/c;->q:Landroid/os/Handler;

    .line 143
    .line 144
    iget-wide v2, v0, Lcom/join/mgps/fragment/roomlist/c;->p:J

    .line 145
    .line 146
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .line 148
    .line 149
    :cond_4
    return-void
.end method
