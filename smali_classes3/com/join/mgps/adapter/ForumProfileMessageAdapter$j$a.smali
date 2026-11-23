.class public Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
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
            "thumbUrl",
            "message",
            "cid",
            "fromType",
            "fromNickName",
            "rid"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput p7, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->g:I

    .line 17
    .line 18
    return-void
.end method
