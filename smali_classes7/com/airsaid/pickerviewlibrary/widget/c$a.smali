.class Lcom/airsaid/pickerviewlibrary/widget/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/airsaid/pickerviewlibrary/widget/c;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/c;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/widget/c;->a(Lcom/airsaid/pickerviewlibrary/widget/c;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->a:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->b(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    add-int/2addr v1, v2

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lh/b;

    .line 39
    .line 40
    const/16 v1, 0x1f

    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, Lh/b;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->b:Ljava/util/List;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/widget/c;->b(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lh/b;

    .line 79
    .line 80
    const/16 v1, 0x1e

    .line 81
    .line 82
    invoke-direct {v0, v2, v1}, Lh/b;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    rem-int/lit8 v0, p1, 0x4

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    rem-int/lit8 v0, p1, 0x64

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    :cond_2
    rem-int/lit16 p1, p1, 0x190

    .line 98
    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v0, Lh/b;

    .line 108
    .line 109
    const/16 v1, 0x1d

    .line 110
    .line 111
    invoke-direct {v0, v2, v1}, Lh/b;-><init>(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v0, Lh/b;

    .line 125
    .line 126
    const/16 v1, 0x1c

    .line 127
    .line 128
    invoke-direct {v0, v2, v1}, Lh/b;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Lh/c;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    sub-int/2addr v1, v2

    .line 145
    if-le p1, v1, :cond_5

    .line 146
    .line 147
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c$a;->c:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 154
    .line 155
    .line 156
    :cond_5
    return-void
.end method
