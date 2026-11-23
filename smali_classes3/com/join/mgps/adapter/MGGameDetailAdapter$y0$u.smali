.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vedio_cover_pic",
            "pic_info",
            "pic_position",
            "vedio_url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
