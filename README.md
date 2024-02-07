# intune

A plugin for using Microsoft Intune within Capacitor iOS & Android apps

## Install

```bash
npm install intune
npx cap sync
```

## API

<docgen-index>

* [`loginAndEnrollAccount(...)`](#loginandenrollaccount)
* [`registerAndEnrollAccount(...)`](#registerandenrollaccount)
* [`deRegisterAndUnenrollAccount(...)`](#deregisterandunenrollaccount)
* [`deRegisterAndUnenrollAccountId(...)`](#deregisterandunenrollaccountid)
* [`openIntuneConsole()`](#openintuneconsole)
* [`getEnrolledAccount()`](#getenrolledaccount)
* [`getEnrolledAccountId()`](#getenrolledaccountid)
* [`getEnrolledAccountIds()`](#getenrolledaccountids)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### loginAndEnrollAccount(...)

```typescript
loginAndEnrollAccount(options: { email: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ email: string; }</code> |

--------------------


### registerAndEnrollAccount(...)

```typescript
registerAndEnrollAccount(options: { email: string; }) => Promise<void>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ email: string; }</code> |

--------------------


### deRegisterAndUnenrollAccount(...)

```typescript
deRegisterAndUnenrollAccount(options: { email: string; withWipe: boolean; }) => Promise<void>
```

| Param         | Type                                               |
| ------------- | -------------------------------------------------- |
| **`options`** | <code>{ email: string; withWipe: boolean; }</code> |

--------------------


### deRegisterAndUnenrollAccountId(...)

```typescript
deRegisterAndUnenrollAccountId(options: { accountId: string; withWipe: boolean; }) => Promise<void>
```

| Param         | Type                                                   |
| ------------- | ------------------------------------------------------ |
| **`options`** | <code>{ accountId: string; withWipe: boolean; }</code> |

--------------------


### openIntuneConsole()

```typescript
openIntuneConsole() => Promise<void>
```

--------------------


### getEnrolledAccount()

```typescript
getEnrolledAccount() => Promise<{ account?: string; }>
```

**Returns:** <code>Promise&lt;{ account?: string; }&gt;</code>

--------------------


### getEnrolledAccountId()

```typescript
getEnrolledAccountId() => Promise<{ accountId?: string; }>
```

**Returns:** <code>Promise&lt;{ accountId?: string; }&gt;</code>

--------------------


### getEnrolledAccountIds()

```typescript
getEnrolledAccountIds() => Promise<{ accountIds?: string[]; }>
```

**Returns:** <code>Promise&lt;{ accountIds?: string[]; }&gt;</code>

--------------------

</docgen-api>



https://learn.microsoft.com/en-us/mem/intune/developer/app-sdk-ios-phase3
> com.microsoft.intune.mam
> 

> Include each protocol that your app passes to UIApplication canOpenURL in the LSApplicationQueriesSchemes array of your app's Info.plist file. For each protocol listed in this array, a copy of the protocol appended with -


> If your app doesn't use FaceID already, ensure the NSFaceIDUsageDescription Info.plist key is configured with a default message. This is required so iOS can let the user know how the app intends to use FaceID. An Intune app protection policy setting allows for FaceID to be used as a method for app access when configured by the IT admin.