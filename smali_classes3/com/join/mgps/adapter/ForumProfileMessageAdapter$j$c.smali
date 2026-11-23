.class public Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "fromType",
            "fromNickName",
            "message",
            "cid",
            "rid",
            "officialAccount"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->e:I

    .line 13
    .line 14
    iput p6, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->f:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->g:Z

    .line 17
    .line 18
    return-void
.end method
