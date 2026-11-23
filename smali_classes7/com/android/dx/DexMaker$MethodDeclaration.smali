.class Lcom/android/dx/DexMaker$MethodDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodDeclaration"
.end annotation


# instance fields
.field private final code:Lcom/android/dx/Code;

.field private final flags:I

.field final method:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/MethodId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/MethodId<",
            "**>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->method:Lcom/android/dx/MethodId;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->flags:I

    .line 7
    .line 8
    new-instance p1, Lcom/android/dx/Code;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/dx/Code;-><init>(Lcom/android/dx/DexMaker$MethodDeclaration;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->code:Lcom/android/dx/Code;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$600(Lcom/android/dx/DexMaker$MethodDeclaration;)Lcom/android/dx/Code;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->code:Lcom/android/dx/Code;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method isDirect()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->flags:I

    .line 2
    .line 3
    const v1, 0x1000a

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method isStatic()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->flags:I

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

.method toEncodedMethod(Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/file/EncodedMethod;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->code:Lcom/android/dx/Code;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/dx/Code;->toBasicBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->code:Lcom/android/dx/Code;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/dx/Code;->paramSize()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lcom/android/dx/dex/file/EncodedMethod;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->method:Lcom/android/dx/MethodId;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/dx/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    .line 30
    .line 31
    iget v2, p0, Lcom/android/dx/DexMaker$MethodDeclaration;->flags:I

    .line 32
    .line 33
    sget-object v3, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
