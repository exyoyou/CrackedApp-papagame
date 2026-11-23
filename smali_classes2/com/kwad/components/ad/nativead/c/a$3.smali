.class final Lcom/kwad/components/ad/nativead/c/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/c/a;->fQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qM:Lcom/kwad/components/ad/nativead/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/nativead/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/c/a;->d(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/c/a;->e(Lcom/kwad/components/ad/nativead/c/a;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/c/a;->d(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/c/a;->e(Lcom/kwad/components/ad/nativead/c/a;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->d(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-float v2, v2

    .line 48
    invoke-static {v1, v2}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->f(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ne v0, v2, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->g(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eq v1, v2, :cond_2

    .line 67
    .line 68
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "\u76d1\u542c\u56681 - \u5c3a\u5bf8: "

    .line 71
    .line 72
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, "x"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, " old: "

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 92
    .line 93
    invoke-static {v4}, Lcom/kwad/components/ad/nativead/c/a;->f(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/kwad/components/ad/nativead/c/a;->g(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "NativeTKView"

    .line 117
    .line 118
    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 122
    .line 123
    invoke-static {v2, v0}, Lcom/kwad/components/ad/nativead/c/a;->a(Lcom/kwad/components/ad/nativead/c/a;I)I

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 127
    .line 128
    invoke-static {v2, v1}, Lcom/kwad/components/ad/nativead/c/a;->b(Lcom/kwad/components/ad/nativead/c/a;I)I

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 132
    .line 133
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->h(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/webview/jshandler/ae$d;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    .line 139
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->h(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/webview/jshandler/ae$d;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v2, v0, v1}, Lcom/kwad/components/core/webview/jshandler/ae$d;->u(II)V

    .line 146
    .line 147
    .line 148
    :cond_2
    return-void
.end method
