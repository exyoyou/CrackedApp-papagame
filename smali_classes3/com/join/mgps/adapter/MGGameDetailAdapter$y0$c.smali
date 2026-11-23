.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recommend_information_switch",
            "recommend_game_switch",
            "comment_switch",
            "comment_count",
            "crc_sign_id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
