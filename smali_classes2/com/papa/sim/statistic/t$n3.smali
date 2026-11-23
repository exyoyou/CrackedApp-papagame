.class Lcom/papa/sim/statistic/t$n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->U1(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$n3;->e:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/sim/statistic/t$n3;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$n3;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/papa/sim/statistic/t$n3;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/papa/sim/statistic/t$n3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/papa/sim/statistic/t$n3;->e:Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADOpenInstant:Lcom/papa/sim/statistic/Event;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n3;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget v4, p0, Lcom/papa/sim/statistic/t$n3;->d:I

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$n3;->e:Lcom/papa/sim/statistic/t;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    .line 32
    .line 33
    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADBattle:Lcom/papa/sim/statistic/Event;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n3;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget v4, p0, Lcom/papa/sim/statistic/t$n3;->d:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/papa/sim/statistic/t$n3;->e:Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADSelLevel:Lcom/papa/sim/statistic/Event;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n3;->c:Ljava/lang/String;

    .line 54
    .line 55
    iget v4, p0, Lcom/papa/sim/statistic/t$n3;->d:I

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/papa/sim/statistic/t$n3;->e:Lcom/papa/sim/statistic/t;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    .line 68
    .line 69
    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADGArchiving:Lcom/papa/sim/statistic/Event;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n3;->c:Ljava/lang/String;

    .line 72
    .line 73
    iget v4, p0, Lcom/papa/sim/statistic/t$n3;->d:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_4
    iget-object v0, p0, Lcom/papa/sim/statistic/t$n3;->e:Lcom/papa/sim/statistic/t;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    .line 86
    .line 87
    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADCheat:Lcom/papa/sim/statistic/Event;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n3;->c:Ljava/lang/String;

    .line 90
    .line 91
    iget v4, p0, Lcom/papa/sim/statistic/t$n3;->d:I

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_5
    iget-object v0, p0, Lcom/papa/sim/statistic/t$n3;->e:Lcom/papa/sim/statistic/t;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    .line 104
    .line 105
    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADOneKey:Lcom/papa/sim/statistic/Event;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/papa/sim/statistic/t$n3;->c:Ljava/lang/String;

    .line 108
    .line 109
    iget v4, p0, Lcom/papa/sim/statistic/t$n3;->d:I

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/s;->y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :catch_0
    :goto_0
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
