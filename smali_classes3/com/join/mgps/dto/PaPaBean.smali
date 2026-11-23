.class public Lcom/join/mgps/dto/PaPaBean;
.super Lcom/join/kotlin/base/impl/BaseDownloadable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;
    }
.end annotation


# static fields
.field public static final KEY_IMAGE_HEADER_HEIGHT:Ljava/lang/String; = "key_image_header_height"


# instance fields
.field private gInfo:Lcom/join/kotlin/base/impl/GInfo;

.field private mImageHeaderParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private typeValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->mImageHeaderParams:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->gInfo:Lcom/join/kotlin/base/impl/GInfo;

    .line 13
    .line 14
    return-void
.end method

.method public static getTypes()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->values()[Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method


# virtual methods
.method public getGInfo()Lcom/join/kotlin/base/impl/GInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->typeValue:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/join/kotlin/base/impl/GInfo;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->gInfo:Lcom/join/kotlin/base/impl/GInfo;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->gInfo:Lcom/join/kotlin/base/impl/GInfo;

    .line 12
    .line 13
    return-object v0
.end method

.method public getImageHeaderParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->mImageHeaderParams:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->gInfo:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaPaBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getTypeValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaPaBean;->typeValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public setImageHeaderParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaPaBean;->mImageHeaderParams:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaPaBean;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setTypeValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeValue"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaPaBean;->typeValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
