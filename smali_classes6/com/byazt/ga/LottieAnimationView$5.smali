.class public Lcom/byazt/ga/LottieAnimationView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x5ec
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/LottieAnimationView;->yp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic n:Lcom/byazt/ga/LottieAnimationView;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/ga/a$uj;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/ga/LottieAnimationView;IIILcom/byazt/ga/a$uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/ga/LottieAnimationView$5;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ga/LottieAnimationView$5;->tt:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/ga/LottieAnimationView$5;->ve:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/ga/LottieAnimationView$5;->uj:Lcom/byazt/ga/a$uj;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/ga/LottieAnimationView;->getFrame()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView$5;->c:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    if-lt p1, v0, :cond_4

    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/byazt/ga/LottieAnimationView;->getFrame()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView$5;->c:I

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    add-int/2addr v0, v2

    .line 23
    if-ge p1, v0, :cond_4

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "--==--- enter timer point, frame: "

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->getFrame()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "TMe"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/byazt/ga/LottieAnimationView;->tt(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    .line 54
    .line 55
    iget p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->tt:I

    .line 56
    .line 57
    if-ltz p1, :cond_2

    .line 58
    .line 59
    iget p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->ve:I

    .line 60
    .line 61
    if-ltz p1, :cond_2

    .line 62
    .line 63
    const-string p1, "--==--- enter timer callback, start timer"

    .line 64
    .line 65
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 69
    .line 70
    invoke-static {p1, v2}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/LottieAnimationView;I)I

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->uj:Lcom/byazt/ga/a$uj;

    .line 74
    .line 75
    iget p1, p1, Lcom/byazt/ga/a$uj;->da:I

    .line 76
    .line 77
    if-ne p1, v1, :cond_0

    .line 78
    .line 79
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/byazt/ga/LottieAnimationView;->yp(Lcom/byazt/ga/LottieAnimationView;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/byazt/ga/LottieAnimationView;->z(Lcom/byazt/ga/LottieAnimationView;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->uj:Lcom/byazt/ga/a$uj;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/byazt/ga/a$uj;->x:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->uj:Lcom/byazt/ga/a$uj;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/byazt/ga/a$uj;->i:Lorg/json/JSONArray;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    :cond_1
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/byazt/ga/LottieAnimationView;->x(Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/LottieAnimationView$tt;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/byazt/ga/LottieAnimationView;->x(Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/LottieAnimationView$tt;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$5;->uj:Lcom/byazt/ga/a$uj;

    .line 126
    .line 127
    iget-object v2, v0, Lcom/byazt/ga/a$uj;->x:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/byazt/ga/a$uj;->i:Lorg/json/JSONArray;

    .line 130
    .line 131
    invoke-interface {p1, v2, v0}, Lcom/byazt/ga/LottieAnimationView$tt;->c(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    const-string p1, "--==--- enter timer callback, NOT start timer"

    .line 136
    .line 137
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/byazt/ga/LottieAnimationView;->m(Lcom/byazt/ga/LottieAnimationView;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eq p1, v1, :cond_4

    .line 147
    .line 148
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView$5;->n:Lcom/byazt/ga/LottieAnimationView;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/byazt/ga/LottieAnimationView;->sp()V

    .line 151
    .line 152
    .line 153
    :cond_4
    return-void
.end method
