.class public Lcom/byazt/vvt/tt$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/tt;->c(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/vvt/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/tt;Ljava/lang/String;Lcom/byazt/ete/ic;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/tt$3;->ve:Lcom/byazt/vvt/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/vvt/tt$3;->tt:I

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/ete/xd;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/byazt/ogz/sl;->uj(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->sf()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x1

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/uj;->setRewardVideoCachedType(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/byazt/ete/xd;->m(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/byazt/ete/xd;->m(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/uj;->setRewardVideoCachedType(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    const/4 v0, 0x4

    .line 95
    iget-object v1, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 96
    .line 97
    invoke-static {v0, v1}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "material_meta"

    .line 102
    .line 103
    iget-object v2, p0, Lcom/byazt/vvt/tt$3;->c:Lcom/byazt/ete/ic;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/byazt/vvt/tt$3;->tt:I

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "ad_slot"

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-static {v0, v1}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    return-void
.end method
