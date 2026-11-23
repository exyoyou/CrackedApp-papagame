.class Lcom/android/dx/DexMaker$FieldDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldDeclaration"
.end annotation


# instance fields
.field private final accessFlags:I

.field final fieldId:Lcom/android/dx/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/FieldId<",
            "**>;"
        }
    .end annotation
.end field

.field private final staticValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/dx/FieldId;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/FieldId<",
            "**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p2, 0x8

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "instance fields may not have a value"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/dx/DexMaker$FieldDeclaration;->fieldId:Lcom/android/dx/FieldId;

    .line 20
    .line 21
    iput p2, p0, Lcom/android/dx/DexMaker$FieldDeclaration;->accessFlags:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/dx/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$800(Lcom/android/dx/DexMaker$FieldDeclaration;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public isStatic()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/DexMaker$FieldDeclaration;->accessFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method toEncodedField()Lcom/android/dx/dex/file/EncodedField;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/dx/dex/file/EncodedField;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/DexMaker$FieldDeclaration;->fieldId:Lcom/android/dx/FieldId;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/dx/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/dx/DexMaker$FieldDeclaration;->accessFlags:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
