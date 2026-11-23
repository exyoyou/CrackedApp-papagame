.class public Lcom/join/mgps/adapter/ForumBaseAdapter$r1$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "removeDivider",
            "title",
            "desc",
            "avatar1Src",
            "avatar2Src",
            "avatar3Src"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$h;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$h;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$h;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$h;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$h;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$h;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
