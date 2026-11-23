.class public Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;JZIZZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "removeDivider",
            "avatarSrc",
            "nickName",
            "timestamps",
            "isTop",
            "pid",
            "isModerator",
            "officialAccount",
            "cid",
            "fromType",
            "rid",
            "vip_level",
            "svip_level",
            "battleTitle",
            "battleColor",
            "uid"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move v1, p1

    .line 6
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->a:Z

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->b:Ljava/lang/String;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    .line 13
    .line 14
    move-wide v1, p4

    .line 15
    iput-wide v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->d:J

    .line 16
    .line 17
    move v1, p6

    .line 18
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->e:Z

    .line 19
    .line 20
    move v1, p7

    .line 21
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->f:I

    .line 22
    .line 23
    move/from16 v1, p17

    .line 24
    .line 25
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->l:I

    .line 26
    .line 27
    move v1, p8

    .line 28
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->g:Z

    .line 29
    .line 30
    move v1, p9

    .line 31
    iput-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->h:Z

    .line 32
    .line 33
    move v1, p10

    .line 34
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->i:I

    .line 35
    .line 36
    move-object v1, p11

    .line 37
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->j:Ljava/lang/String;

    .line 38
    .line 39
    move v1, p12

    .line 40
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->k:I

    .line 41
    .line 42
    move/from16 v1, p13

    .line 43
    .line 44
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->m:I

    .line 45
    .line 46
    move/from16 v1, p14

    .line 47
    .line 48
    iput v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->n:I

    .line 49
    .line 50
    move-object/from16 v1, p15

    .line 51
    .line 52
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->o:Ljava/lang/String;

    .line 53
    .line 54
    move-object/from16 v1, p16

    .line 55
    .line 56
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->p:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method
