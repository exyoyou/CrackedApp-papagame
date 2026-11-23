.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ico_remote",
            "game_name",
            "tag_info",
            "down_count",
            "down_count_manual",
            "company_name",
            "size",
            "game_follow",
            "game_book",
            "follow_background_img",
            "game_book_tag",
            "bespeak_switch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput p8, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->j:I

    .line 19
    .line 20
    iput p9, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->k:I

    .line 21
    .line 22
    iput-object p10, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->i:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->h:Ljava/util/List;

    .line 25
    .line 26
    iput p12, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    .line 27
    .line 28
    return-void
.end method
