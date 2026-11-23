.class public Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d0"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V
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
            "icon",
            "name",
            "desc",
            "isMyGroup",
            "users",
            "fid",
            "isMyFollow"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->d:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->e:I

    .line 13
    .line 14
    iput p6, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->f:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->g:Z

    .line 17
    .line 18
    return-void
.end method
