.class public Lcom/windmill/sdk/natives/WMViewBinder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected a:I

.field protected dz:I

.field protected e:I

.field protected k:I

.field protected l:I

.field protected p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected q:I

.field protected qp:I

.field protected r:I

.field protected rb:I

.field protected s:I

.field protected vc:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->p:Ljava/util/Map;

    .line 9
    .line 10
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->s:I

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->p:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "var2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public addExtras(Ljava/util/Map;)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/windmill/sdk/natives/WMViewBinder$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->p:Ljava/util/Map;

    .line 7
    .line 8
    return-object p0
.end method

.method public build()Lcom/windmill/sdk/natives/WMViewBinder;
    .locals 1

    .line 1
    new-instance v0, Lcom/windmill/sdk/natives/WMViewBinder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/windmill/sdk/natives/WMViewBinder;-><init>(Lcom/windmill/sdk/natives/WMViewBinder$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public callToActionId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->r:I

    .line 2
    .line 3
    return-object p0
.end method

.method public descriptionTextId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->qp:I

    .line 2
    .line 3
    return-object p0
.end method

.method public groupImage1Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->l:I

    .line 2
    .line 3
    return-object p0
.end method

.method public groupImage2Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public groupImage3Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->dz:I

    .line 2
    .line 3
    return-object p0
.end method

.method public iconImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public mainImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->vc:I

    .line 2
    .line 3
    return-object p0
.end method

.method public mediaViewIdId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->k:I

    .line 2
    .line 3
    return-object p0
.end method

.method public shakeViewContainerId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->rb:I

    .line 2
    .line 3
    return-object p0
.end method

.method public titleId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->a:I

    .line 2
    .line 3
    return-object p0
.end method
